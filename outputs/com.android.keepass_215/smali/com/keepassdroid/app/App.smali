.class public Lcom/keepassdroid/app/App;
.super Landroidx/multidex/MultiDexApplication;
.source "App.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeePassDroid Timer"

.field private static calendar:Ljava/util/Calendar; = null

.field private static db:Lcom/keepassdroid/Database; = null

.field private static fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory; = null

.field private static shutdown:Z = false


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/app/App;Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/keepassdroid/app/App;->timeout(Landroid/content/Context;)V

    return-void
.end method

.method public static clearShutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/keepassdroid/app/App;->shutdown:Z

    return-void
.end method

.method public static getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 76
    sget-object v0, Lcom/keepassdroid/app/App;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/app/App;->calendar:Ljava/util/Calendar;

    .line 80
    :cond_0
    sget-object v0, Lcom/keepassdroid/app/App;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public static getDB()Lcom/keepassdroid/Database;
    .locals 1

    .line 48
    sget-object v0, Lcom/keepassdroid/app/App;->db:Lcom/keepassdroid/Database;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/keepassdroid/Database;

    invoke-direct {v0}, Lcom/keepassdroid/Database;-><init>()V

    sput-object v0, Lcom/keepassdroid/app/App;->db:Lcom/keepassdroid/Database;

    .line 52
    :cond_0
    sget-object v0, Lcom/keepassdroid/app/App;->db:Lcom/keepassdroid/Database;

    return-object v0
.end method

.method public static getFileHistory()Lcom/keepassdroid/fileselect/RecentFileHistory;
    .locals 1

    .line 56
    sget-object v0, Lcom/keepassdroid/app/App;->fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory;

    return-object v0
.end method

.method public static isShutdown()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/keepassdroid/app/App;->shutdown:Z

    return v0
.end method

.method public static setDB(Lcom/keepassdroid/Database;)V
    .locals 0

    .line 60
    sput-object p0, Lcom/keepassdroid/app/App;->db:Lcom/keepassdroid/Database;

    return-void
.end method

.method public static setShutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/keepassdroid/app/App;->shutdown:Z

    return-void
.end method

.method private timeout(Landroid/content/Context;)V
    .locals 1

    const-string p1, "KeePassDroid Timer"

    const-string v0, "Timeout"

    .line 108
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lcom/keepassdroid/app/App;->setShutdown()V

    const-string p1, "notification"

    .line 111
    invoke-virtual {p0, p1}, Lcom/keepassdroid/app/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 112
    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 87
    new-instance v0, Lcom/keepassdroid/fileselect/RecentFileHistory;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keepassdroid/app/App;->fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory;

    .line 89
    invoke-static {}, Lcom/keepassdroid/compat/PRNGFixes;->apply()V

    .line 91
    new-instance v0, Lcom/keepassdroid/app/App$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/app/App$1;-><init>(Lcom/keepassdroid/app/App;)V

    iput-object v0, p0, Lcom/keepassdroid/app/App;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.keepassdroid.timeout"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/keepassdroid/app/App;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/keepassdroid/app/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 117
    sget-object v0, Lcom/keepassdroid/app/App;->db:Lcom/keepassdroid/Database;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/keepassdroid/app/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keepassdroid/Database;->clear(Landroid/content/Context;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/app/App;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/keepassdroid/app/App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onTerminate()V

    return-void
.end method
