% Metal Interference Field Distortion vs. Frequency
% Model for eddy current interference in a conductive loop placed between
% an electromagnetic source and sensor

clear all;
close all;

% Loop properties
loop_diameter = 25e-3;    % Loop diameter [m]
wire_diameter = 2e-3;     % Wire thickness [m]
loop_radius = loop_diameter/2;
wire_radius = wire_diameter/2;

% Material properties
% [resistivity, relative permeability]
materials = struct(...
    'copper',    [1.68e-8, 1], ...
    'aluminum',  [2.82e-8, 1], ...
    'stainless', [7.2e-7, 5]  ... % 304 stainless, cold-worked (μr~5)
);

% Constants
mu0 = 4*pi*1e-7;  % Permeability of free space [H/m]

% Test frequencies of interest
test_freqs = [300, 10000];  % 300 Hz and 10 kHz

% Frequency range (logarithmic spacing)
f = logspace(2, 5, 1000);  % 100 Hz to 100 kHz
omega = 2*pi*f;

% Source field parameters
B_source = 1e-4;  % Source field strength [T]

% Distance parameters
sensor_distance = 0.2;  % Total source-to-sensor distance [m]
% Loop is placed midway between source and sensor
metal_to_source = 0.1;  % Distance from source to metal [m]
metal_to_sensor = 0.1;  % Distance from metal to sensor [m]

% Compute loop parameters
loop_circumference = pi * loop_diameter;
loop_area = pi * loop_radius^2;

% Approximate inductance (using formula for circular loop)
L_loop = mu0 * loop_radius * (log(8*loop_radius/wire_radius) - 2);

% Initialize arrays
material_names = fieldnames(materials);
corner_freqs = zeros(length(material_names), 1);
B_distortion_normalized_at_test = zeros(length(material_names), length(test_freqs));

% Create figure for the plot - 3.5 inch column width (89 mm), with 4:3 aspect ratio
figure('Units', 'inches', 'Position', [1, 1, 3.5, 2.6]);
hold on;

% Set up colors for the plot
colors = {'#0072BD', '#D95319', '#77AC30'};  % Matlab default colors

% Initialize legend entries
leg_entries = {};

% Calculate and plot for each material
for m = 1:length(material_names)
    material = material_names{m};
    resistivity = materials.(material)(1);
    rel_permeability = materials.(material)(2);
    
    % Calculate DC resistance of the loop
    R_dc = resistivity * loop_circumference / (pi * wire_radius^2);
    
    % Calculate skin depth vs. frequency
    mu_r = rel_permeability;
    skin_depth = sqrt(2 * resistivity ./ (omega * mu0 * mu_r));
    
    % Calculate AC resistance including skin effect
    R_ac = R_dc * ones(size(f));
    skin_limited = skin_depth < wire_radius;
    effective_area = pi * (wire_radius^2 - (wire_radius - skin_depth(skin_limited)).^2);
    R_ac(skin_limited) = resistivity * loop_circumference ./ effective_area;
    
    % Calculate total impedance
    Z_r = R_ac;
    Z_l = omega * L_loop;
    Z_mag = sqrt(Z_r.^2 + Z_l.^2);
    
    % Calculate induced voltage (proportional to frequency)
    V_induced = omega * B_source * loop_area;
    
    % Calculate current
    I_loop = V_induced ./ Z_mag;
    
    % Calculate field distortion (proportional to current)
    % Using dipole approximation for the field at the sensor location
    B_distortion = (mu0 * I_loop * loop_area) / (2 * pi * metal_to_sensor^3);
    B_distortion_normalized = B_distortion / B_source;
    
    % Calculate corner frequency (where R = ωL)
    corner_freq = R_dc / (2 * pi * L_loop);
    corner_freqs(m) = corner_freq;
    
    % Plot field distortion vs. frequency
    loglog(f, B_distortion_normalized, 'Color', colors{m}, 'LineWidth', 2);
    leg_entries{end+1} = material;
    
    % Calculate distortion at test frequencies
    for i = 1:length(test_freqs)
        [~, idx] = min(abs(f - test_freqs(i)));
        B_distortion_normalized_at_test(m,i) = B_distortion_normalized(idx);
    end
end

ylim([5e-7 2e-3])

% Add vertical lines at inductive corner frequencies
yl = ylim;
for m = 1:length(material_names)
    xline(corner_freqs(m), '--', 'Color', colors{m}, 'LineWidth', 1, ...
          'Label', [material_names{m} ' R=ωL'], ...
          'LabelVerticalAlignment', 'bottom', ...
          'LabelHorizontalAlignment', 'center', ...
          'FontSize', 7);
end

% Add vertical lines at test frequencies
for i = 1:length(test_freqs)
    xline(test_freqs(i), '-', 'Color', 'k', 'LineWidth', 1, ...
          'Label', [num2str(test_freqs(i)) ' Hz'], ...
          'LabelVerticalAlignment', 'bottom', ...
          'LabelHorizontalAlignment', 'center', ...
          'FontSize', 7);
end

% Format plot for journal publication
title('Normalized Field Distortion vs. Frequency', 'FontSize', 10);
xlabel('Frequency (Hz)', 'FontSize', 9);
ylabel('Field Distortion / Source Field', 'FontSize', 9);
grid on;
legend(leg_entries, 'Location', 'best', 'FontSize', 8);
set(gca, 'XScale', 'log', 'YScale', 'log', 'FontSize', 8);
% Explicitly set x-axis limits to start at 100 Hz
xlim([100, 1e5]);

% Print model parameters to command window instead of figure annotation
fprintf('\n\nMODEL PARAMETERS:\n');
fprintf('Loop: %.1f mm diameter, %.1f mm wire thickness\n', loop_diameter*1000, wire_diameter*1000);
fprintf('Distances: Source-to-metal = %.1f mm, Metal-to-sensor = %.1f mm\n', metal_to_source*1000, metal_to_sensor*1000);
fprintf('Assumes uniform external field and dipole approximation for induced field\n\n');

% Calculate ratios between 10 kHz and 300 Hz
ratio_10k_to_300 = B_distortion_normalized_at_test(:,2) ./ B_distortion_normalized_at_test(:,1);

% Display the table of results
disp('Field Distortion Ratios (normalized to source field):');
disp('------------------------------------------------------');
disp(['Material      300 Hz        10 kHz        10kHz/300Hz Ratio']);
disp('------------------------------------------------------');
for m = 1:length(material_names)
    fprintf('%-10s   %.6f      %.6f      %.2f\n', ...
        material_names{m}, ...
        B_distortion_normalized_at_test(m,1), ...
        B_distortion_normalized_at_test(m,2), ...
        ratio_10k_to_300(m));
end


% Generate LaTeX table for the distortion ratios

% Display the table of results
disp('Field Distortion Ratios (normalized to source field):');
disp('------------------------------------------------------');
disp(['Material      300 Hz        10 kHz        10kHz/300Hz Ratio']);
disp('------------------------------------------------------');
for m = 1:length(material_names)
    fprintf('%-10s   %.6f      %.6f      %.2f\n', ...
        material_names{m}, ...
        B_distortion_normalized_at_test(m,1), ...
        B_distortion_normalized_at_test(m,2), ...
        ratio_10k_to_300(m));
end

% Generate LaTeX table for the distortion ratios (IEEE format)
fprintf('\n\nLaTeX Table for IEEE Publication:\n');
fprintf('\\begin{table}[!htbp]\n');
fprintf('\\caption{Field Distortion Ratios for Different Metals}\n');
fprintf('\\label{tab:distortion_ratios}\n');
fprintf('\\setlength{\\tabcolsep}{4pt}\n');
fprintf('\\begin{tabular}{|l|c|c|c|}\n');
fprintf('\\hline\n');
fprintf('Material & 300 Hz & 10 kHz & Ratio (10 kHz / 300 Hz) \\\\ \n');
fprintf('\\hline\n');

for m = 1:length(material_names)
    % Format scientific notation for small numbers
    if B_distortion_normalized_at_test(m,1) < 0.001
      val_300Hz = sprintf('$%.2e$', B_distortion_normalized_at_test(m,1));
    else
      val_300Hz = sprintf('$%.6e$', B_distortion_normalized_at_test(m,1));
    end
    
    if B_distortion_normalized_at_test(m,2) < 0.001
        val_10kHz = sprintf('$%.2e$', B_distortion_normalized_at_test(m,2));
    else
        val_10kHz = sprintf('$%.6f$', B_distortion_normalized_at_test(m,2));
    end
    
    % Capitalize first letter of material name for publication
    material_name = material_names{m};
    material_name(1) = upper(material_name(1));
    
    fprintf('%s & %s & %s & $%.2f$ \\\\\n', ...
        material_name, val_300Hz, val_10kHz, ratio_10k_to_300(m));
end

fprintf('\\hline\n');
fprintf('\\end{tabular}\n');
fprintf('\\begin{flushleft}\n');
fprintf('Model parameters: %.1f mm diameter loop, %.1f mm wire thickness. ', loop_diameter*1000, wire_diameter*1000);
fprintf('Source-to-metal = %.1f mm, Metal-to-sensor = %.1f mm. ', metal_to_source*1000, metal_to_sensor*1000);
fprintf('Field distortion values are normalized to the source field strength.\n');
fprintf('\\end{flushleft}\n');
fprintf('\\end{table}\n\n');

