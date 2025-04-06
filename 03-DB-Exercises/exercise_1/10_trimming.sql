SELECT
    LTRIM(peak_name, 'mM') AS left_trim,
    RTRIM(peak_name, 'm') AS right_trim
FROM
    peaks;