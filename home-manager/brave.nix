{ pkgs, ... }:

{
    programs.chromium = {
        enable = true;
        package = pkgs.brave;
        extensions = [
            { id = "cpgaheeihidjmolbakklolchdplenjai"; } # turbo download instagram
        ];
        commandLineArgs = [
            # "--disable-features=WebRtcAllowInputVolumeAdjustment"
        ];
    };
}