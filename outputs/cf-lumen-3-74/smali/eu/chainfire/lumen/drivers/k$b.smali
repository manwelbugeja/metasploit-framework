.class public Leu/chainfire/lumen/drivers/k$b;
.super Leu/chainfire/lumen/drivers/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c$a;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Leu/chainfire/lumen/drivers/k$b;->a:I

    iput v0, p0, Leu/chainfire/lumen/drivers/k$b;->b:I

    iput v0, p0, Leu/chainfire/lumen/drivers/k$b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/lumen/drivers/k$b;->d:F

    return-void
.end method

.method static synthetic c(Leu/chainfire/lumen/drivers/k$b;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/drivers/k$b;->a:I

    return p0
.end method

.method static synthetic d(Leu/chainfire/lumen/drivers/k$b;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/drivers/k$b;->b:I

    return p0
.end method

.method static synthetic e(Leu/chainfire/lumen/drivers/k$b;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/drivers/k$b;->c:I

    return p0
.end method

.method public static f()Leu/chainfire/lumen/drivers/k$b;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/k$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/k$b;-><init>()V

    return-object v0
.end method

.method public static g()Leu/chainfire/lumen/drivers/k$b;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/k$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/k$b;-><init>()V

    return-object v0
.end method

.method public static h(I)Leu/chainfire/lumen/drivers/k$b;
    .locals 3

    invoke-static {p0}, Leu/chainfire/lumen/drivers/i;->c(I)[I

    move-result-object p0

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0}, Leu/chainfire/lumen/drivers/k$b;->i(III)Leu/chainfire/lumen/drivers/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static i(III)Leu/chainfire/lumen/drivers/k$b;
    .locals 3

    new-instance v0, Leu/chainfire/lumen/drivers/k$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/k$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v2, 0xff

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Leu/chainfire/lumen/drivers/k$b;->a:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Leu/chainfire/lumen/drivers/k$b;->b:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Leu/chainfire/lumen/drivers/k$b;->c:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Leu/chainfire/lumen/drivers/k$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Leu/chainfire/lumen/drivers/k$b;

    iget v0, p0, Leu/chainfire/lumen/drivers/k$b;->a:I

    iget v2, p1, Leu/chainfire/lumen/drivers/k$b;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Leu/chainfire/lumen/drivers/k$b;->b:I

    iget v2, p1, Leu/chainfire/lumen/drivers/k$b;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Leu/chainfire/lumen/drivers/k$b;->c:I

    iget p1, p1, Leu/chainfire/lumen/drivers/k$b;->c:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public j()F
    .locals 1

    iget v0, p0, Leu/chainfire/lumen/drivers/k$b;->d:F

    return v0
.end method

.method public k(F)Leu/chainfire/lumen/drivers/k$b;
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/drivers/k$b;->d:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Leu/chainfire/lumen/drivers/k$b;->a:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget v2, p0, Leu/chainfire/lumen/drivers/k$b;->b:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Leu/chainfire/lumen/drivers/k$b;->c:I

    if-ne v2, v1, :cond_0

    const-string v0, "ROOTLESS --> OFF"

    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Leu/chainfire/lumen/drivers/k$b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Leu/chainfire/lumen/drivers/k$b;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "ROOTLESS --> R:%d G:%d B:%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
