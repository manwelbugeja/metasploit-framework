.class public Lcom/keepassdroid/utils/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# static fields
.field private static final READ_WRITE_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/keepassdroid/utils/PermissionUtil;->READ_WRITE_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequest(Landroid/app/Activity;I)Z
    .locals 4

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 35
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 37
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    return v1

    .line 41
    :cond_3
    :goto_2
    sget-object v0, Lcom/keepassdroid/utils/PermissionUtil;->READ_WRITE_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v2
.end method
