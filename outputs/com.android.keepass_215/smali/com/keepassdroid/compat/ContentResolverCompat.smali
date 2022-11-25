.class public Lcom/keepassdroid/compat/ContentResolverCompat;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# static fields
.field public static available:Z

.field private static contentResolver:Ljava/lang/Class;

.field private static takePersistableUriPermission:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    .line 34
    :try_start_0
    const-class v1, Landroid/content/ContentResolver;

    sput-object v1, Lcom/keepassdroid/compat/ContentResolverCompat;->contentResolver:Ljava/lang/Class;

    const-string v2, "takePersistableUriPermission"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 35
    const-class v4, Landroid/net/Uri;

    aput-object v4, v3, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/ContentResolverCompat;->takePersistableUriPermission:Ljava/lang/reflect/Method;

    .line 37
    sput-boolean v5, Lcom/keepassdroid/compat/ContentResolverCompat;->available:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    sput-boolean v0, Lcom/keepassdroid/compat/ContentResolverCompat;->available:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static takePersistableUriPermission(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 3

    .line 44
    sget-boolean v0, Lcom/keepassdroid/compat/ContentResolverCompat;->available:Z

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    sget-object v0, Lcom/keepassdroid/compat/ContentResolverCompat;->takePersistableUriPermission:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
