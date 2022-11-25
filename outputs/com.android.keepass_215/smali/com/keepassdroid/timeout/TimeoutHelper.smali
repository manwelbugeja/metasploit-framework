.class public Lcom/keepassdroid/timeout/TimeoutHelper;
.super Ljava/lang/Object;
.source "TimeoutHelper.java"


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x493e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkShutdown(Landroid/app/Activity;)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/keepassdroid/app/App;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static getTimeoutLength(Landroid/content/Context;)J
    .locals 3

    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f10002e

    .line 54
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100050

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/32 v0, 0x493e0

    :goto_0
    return-wide v0
.end method

.method public static pause(Landroid/app/Activity;)V
    .locals 4

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 41
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f100158

    .line 42
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/keepassdroid/timers/Timeout;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static resume(Landroid/app/Activity;)V
    .locals 8

    .line 66
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/keepassdroid/timers/Timeout;->cancel(Landroid/content/Context;)V

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f100158

    .line 75
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return-void

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/keepassdroid/timeout/TimeoutHelper;->getTimeoutLength(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-nez p0, :cond_2

    return-void

    :cond_2
    sub-long/2addr v0, v2

    cmp-long p0, v0, v6

    if-ltz p0, :cond_3

    .line 91
    invoke-static {}, Lcom/keepassdroid/app/App;->setShutdown()V

    :cond_3
    return-void
.end method
