% visualizeWeights.m

function visualizeWeights()
    % Kullanıcıdan ağırlıkları giriş yapmasını iste
    weights = input('Lütfen ağırlıkları boşluklu bir vektör olarak girin: ');

    % Ağırlıkları görselleştir
    figure;

    % Çubuk grafik
    subplot(3, 1, 1);
    bar(weights, 'FaceColor', [0.4 0.6 0.8]);
    title('Ağırlıkların Çubuk Grafik ile Görselleştirilmesi');
    xlabel('Öğe Numarası');
    ylabel('Ağırlık Değeri');

    % Pasta grafik
    subplot(3, 1, 2);
    pie(weights);
    title('Ağırlıkların Pasta Grafik ile Görselleştirilmesi');

    % Ağırlıkların dağılımını gösteren eğri
    subplot(3, 1, 3);
    histogram(weights, 'Normalization', 'probability', 'FaceColor', [0.4 0.6 0.8]);
    hold on;

    % Normal dağılım eğrisi
    mu = mean(weights);
    sigma = std(weights);
    x = linspace(min(weights), max(weights), 100);
    y = normpdf(x, mu, sigma);
    plot(x, y, 'r', 'LineWidth', 2);

    title('Ağırlıkların Dağılımı ve Normal Dağılım Eğrisi');
    xlabel('Ağırlık Değeri');
    ylabel('Olasılık Yoğunluğu');
    legend('Ağırlıkların Dağılımı', 'Normal Dağılım Eğrisi', 'Location', 'NorthEast');
end
