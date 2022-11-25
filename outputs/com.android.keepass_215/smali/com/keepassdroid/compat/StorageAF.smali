.class public Lcom/keepassdroid/compat/StorageAF;
.super Ljava/lang/Object;
.source "StorageAF.java"


# static fields
.field public static ACTION_OPEN_DOCUMENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    :try_start_0
    const-class v0, Landroid/content/Intent;

    const-string v1, "ACTION_OPEN_DOCUMENT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/keepassdroid/compat/StorageAF;->ACTION_OPEN_DOCUMENT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    .line 44
    sput-object v0, Lcom/keepassdroid/compat/StorageAF;->ACTION_OPEN_DOCUMENT:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportsStorageFramework()Z
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static useStorageFramework(Landroid/content/Context;)Z
    .locals 3

    .line 52
    invoke-static {}, Lcom/keepassdroid/compat/StorageAF;->supportsStorageFramework()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f100148

    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
