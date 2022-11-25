.class public Leu/chainfire/librootjava/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Leu/chainfire/librootjava/d;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/librootjava/d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Leu/chainfire/librootjava/d;->b:Z

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Leu/chainfire/librootjava/d;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object p1, Leu/chainfire/librootjava/d;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    sget-boolean v0, Leu/chainfire/librootjava/d;->b:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object p2, Leu/chainfire/librootjava/d;->a:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v3, ""

    :cond_2
    aput-object v3, v1, p0

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "[%s]%s%s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static c(Ljava/lang/Exception;)V
    .locals 3

    sget-boolean v0, Leu/chainfire/librootjava/d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "EXCEPTION"

    const-string v2, "%s: %s"

    invoke-static {v1, v2, v0}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    const-string v0, "eu.chainfire.librootjava"

    :goto_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static e(Z)V
    .locals 0

    sput-boolean p0, Leu/chainfire/librootjava/d;->b:Z

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Leu/chainfire/librootjava/d;->a:Ljava/lang/String;

    return-void
.end method
