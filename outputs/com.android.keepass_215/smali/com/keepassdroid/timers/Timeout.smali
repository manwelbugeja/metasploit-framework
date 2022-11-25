.class public Lcom/keepassdroid/timers/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x493e0L

.field private static final REQUEST_ID:I = 0x0

.field private static TAG:Ljava/lang/String; = "KeePass Timeout"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.keepassdroid.timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.keepass"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x14000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    :goto_0
    const/4 v2, 0x0

    .line 47
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static cancel(Landroid/content/Context;)V
    .locals 3

    const-string v0, "alarm"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 80
    sget-object v1, Lcom/keepassdroid/timers/Timeout;->TAG:Ljava/lang/String;

    const-string v2, "Timeout cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Lcom/keepassdroid/timers/Timeout;->buildIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 5

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f10002e

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100050

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/32 v0, 0x493e0

    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    const-string v0, "alarm"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 73
    sget-object v1, Lcom/keepassdroid/timers/Timeout;->TAG:Ljava/lang/String;

    const-string v4, "Timeout start"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 74
    invoke-static {p0}, Lcom/keepassdroid/timers/Timeout;->buildIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
