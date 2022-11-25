.class public abstract Leu/chainfire/lumen/drivers/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/c$a;
    }
.end annotation


# instance fields
.field private a:Leu/chainfire/lumen/drivers/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/c;->a:Leu/chainfire/lumen/drivers/c$a;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Leu/chainfire/lumen/drivers/c;->b(Ljava/lang/Boolean;Z)Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/Boolean;Z)Z
    .locals 0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected c(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method protected d(FFI)F
    .locals 0

    sub-float/2addr p2, p1

    int-to-float p3, p3

    mul-float p2, p2, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public abstract e(Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/drivers/c$a;
.end method

.method public f()Leu/chainfire/lumen/drivers/c$a;
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/c;->a:Leu/chainfire/lumen/drivers/c$a;

    return-object v0
.end method

.method protected g(III)I
    .locals 1

    int-to-float p2, p2

    int-to-float v0, p1

    sub-float/2addr p2, v0

    int-to-float p3, p3

    mul-float p2, p2, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    return p1
.end method

.method protected h(Ljava/lang/Integer;I)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected i(Ljava/lang/Integer;Ljava/lang/Integer;II)I
    .locals 0

    invoke-virtual {p0, p1, p3}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result p1

    invoke-virtual {p0, p2, p3}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p1

    sub-float/2addr p2, p3

    int-to-float p3, p4

    mul-float p2, p2, p3

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    return p1
.end method

.method public abstract j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;
.end method

.method public abstract k(Leu/chainfire/lumen/drivers/c$a;Leu/chainfire/lumen/drivers/c$a;I)[Ljava/lang/String;
.end method

.method public l(Leu/chainfire/lumen/drivers/c$a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/c;->a:Leu/chainfire/lumen/drivers/c$a;

    return-void
.end method

.method public abstract m(Leu/chainfire/lumen/a$e;)Z
.end method

.method public abstract n(Leu/chainfire/lumen/a$e;)Z
.end method
