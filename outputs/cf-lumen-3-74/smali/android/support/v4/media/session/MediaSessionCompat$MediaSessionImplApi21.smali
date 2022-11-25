.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private d:Landroid/support/v4/media/MediaMetadataCompat;

.field e:I

.field f:Z

.field g:I

.field h:Z

.field i:I


# direct methods
.method static synthetic a(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->a:Z

    return p0
.end method

.method static synthetic b(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->b:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic c(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p0
.end method

.method static synthetic d(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->d:Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0
.end method
