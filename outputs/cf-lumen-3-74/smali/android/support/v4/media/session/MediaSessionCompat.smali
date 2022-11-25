.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;,
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 14

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->b()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()F

    move-result v6

    sub-long v0, v12, v0

    long-to-float v0, v0

    mul-float v6, v6, v0

    float-to-long v0, v6

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()J

    move-result-wide v6

    add-long/2addr v0, v6

    if-eqz p1, :cond_2

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->c(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    move-wide v9, v2

    goto :goto_0

    :cond_3
    cmp-long p1, v0, v4

    if-gez p1, :cond_4

    move-wide v9, v4

    goto :goto_0

    :cond_4
    move-wide v9, v0

    :goto_0
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/PlaybackStateCompat$b;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->e()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()F

    move-result v11

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->b(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method
