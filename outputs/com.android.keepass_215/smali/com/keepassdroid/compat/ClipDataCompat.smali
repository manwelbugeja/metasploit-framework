.class public Lcom/keepassdroid/compat/ClipDataCompat;
.super Ljava/lang/Object;
.source "ClipDataCompat.java"


# static fields
.field private static getClipDataFromIntent:Ljava/lang/reflect/Method;

.field private static initSucceded:Z

.field private static persistableBundle:Ljava/lang/Class;

.field private static putBoolean:Ljava/lang/reflect/Method;

.field private static setExtras:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    .line 39
    :try_start_0
    const-class v1, Landroid/content/Intent;

    const-string v2, "getClipData"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/ClipDataCompat;->getClipDataFromIntent:Ljava/lang/reflect/Method;

    const-string v1, "android.os.PersistableBundle"

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/ClipDataCompat;->persistableBundle:Ljava/lang/Class;

    const-string v2, "putBoolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 42
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/ClipDataCompat;->putBoolean:Ljava/lang/reflect/Method;

    .line 45
    const-class v1, Landroid/content/ClipDescription;

    const-string v2, "setExtras"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Lcom/keepassdroid/compat/ClipDataCompat;->persistableBundle:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/ClipDataCompat;->setExtras:Ljava/lang/reflect/Method;

    .line 48
    sput-boolean v5, Lcom/keepassdroid/compat/ClipDataCompat;->initSucceded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    sput-boolean v0, Lcom/keepassdroid/compat/ClipDataCompat;->initSucceded:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUriFromIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 56
    sget-boolean v0, Lcom/keepassdroid/compat/ClipDataCompat;->initSucceded:Z

    if-eqz v0, :cond_1

    .line 58
    :try_start_0
    sget-object v0, Lcom/keepassdroid/compat/ClipDataCompat;->getClipDataFromIntent:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v1

    .line 80
    :catch_0
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public static markSensitive(Landroid/content/ClipData;)V
    .locals 6

    .line 86
    :try_start_0
    sget-object v0, Lcom/keepassdroid/compat/ClipDataCompat;->persistableBundle:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/keepassdroid/compat/ClipDataCompat;->putBoolean:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "android.content.extra.IS_SENSITIVE"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/keepassdroid/compat/ClipDataCompat;->setExtras:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
