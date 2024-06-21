document.addEventListener('DOMContentLoaded', function () {
    const videoPlayer = document.getElementById('video_player');

    window.changeQuality = function (src) {
        const currentTime = videoPlayer.currentTime;
        const isPlaying = !videoPlayer.paused;

        videoPlayer.src = src;

        videoPlayer.addEventListener('loadedmetadata', function () {
            videoPlayer.currentTime = currentTime;
            if (isPlaying) {
                videoPlayer.play();
            }
        }, { once: true });
    };
});