.class public Lcom/keepassdroid/utils/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field public static final COPY_CHANNEL_ID:Ljava/lang/String; = "copy"

.field public static final COPY_CHANNEL_NAME:Ljava/lang/String; = "Copy username and password"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChannels(Landroid/content/Context;)V
    .locals 4

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 35
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    const-string v2, "copy"

    const-string v3, "Copy username and password"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 43
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-nez p0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method
