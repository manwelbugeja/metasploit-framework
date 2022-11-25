.class public Lc/a/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:I = 0xffff

.field private static c:Lc/a/a/a$a; = null

.field private static d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lc/a/a/a;->a:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lc/a/a/a;->d:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lc/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "G"

    invoke-static {v0, v1, p0}, Lc/a/a/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "C"

    invoke-static {v0, v1, p0}, Lc/a/a/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lc/a/a/a;->a:Z

    if-eqz v0, :cond_2

    sget v0, Lc/a/a/a;->b:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_2

    sget-object v0, Lc/a/a/a;->c:Lc/a/a/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lc/a/a/a$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[libsuperuser]["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v0, " "

    if-nez p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "libsuperuser"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "O"

    invoke-static {v0, v1, p0}, Lc/a/a/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i(Z)V
    .locals 0

    sput-boolean p0, Lc/a/a/a;->a:Z

    return-void
.end method

.method public static j(IZ)V
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lc/a/a/a;->b:I

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sget p1, Lc/a/a/a;->b:I

    not-int p0, p0

    and-int/2addr p0, p1

    :goto_0
    sput p0, Lc/a/a/a;->b:I

    return-void
.end method
