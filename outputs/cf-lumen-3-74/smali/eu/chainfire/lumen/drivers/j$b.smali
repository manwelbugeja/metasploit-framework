.class public Leu/chainfire/lumen/drivers/j$b;
.super Leu/chainfire/lumen/drivers/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/lumen/drivers/j$b;->d:F

    return-void
.end method

.method synthetic constructor <init>(Leu/chainfire/lumen/drivers/j$a;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/j$b;-><init>()V

    return-void
.end method

.method static synthetic c(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Leu/chainfire/lumen/drivers/j$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic e(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Leu/chainfire/lumen/drivers/j$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic g(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic h(Leu/chainfire/lumen/drivers/j$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic i(Leu/chainfire/lumen/drivers/j$b;)F
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/drivers/j$b;->d:F

    return p0
.end method

.method static synthetic j(Leu/chainfire/lumen/drivers/j$b;F)F
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/drivers/j$b;->d:F

    return p1
.end method

.method private static k(I)I
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x4060101010101010L    # 128.50196078431372

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const v0, 0x8000

    if-le p0, v0, :cond_1

    const p0, 0x8000

    :cond_1
    return p0
.end method

.method public static l()Leu/chainfire/lumen/drivers/j$b;
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/j$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/j$b;-><init>()V

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    iput-object v1, v0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    iput-object v1, v0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/lumen/drivers/j$b;->d:F

    return-object v0
.end method

.method public static m()Leu/chainfire/lumen/drivers/j$b;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/j$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/j$b;-><init>()V

    return-object v0
.end method

.method public static n(I)Leu/chainfire/lumen/drivers/j$b;
    .locals 3

    invoke-static {p0}, Leu/chainfire/lumen/drivers/i;->b(I)[I

    move-result-object p0

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0}, Leu/chainfire/lumen/drivers/j$b;->o(III)Leu/chainfire/lumen/drivers/j$b;

    move-result-object p0

    return-object p0
.end method

.method public static o(III)Leu/chainfire/lumen/drivers/j$b;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/j$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/j$b;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public static p(III)Leu/chainfire/lumen/drivers/j$b;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/j$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/j$b;-><init>()V

    invoke-static {p0}, Leu/chainfire/lumen/drivers/j$b;->k(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->k(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    invoke-static {p2}, Leu/chainfire/lumen/drivers/j$b;->k(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Leu/chainfire/lumen/drivers/j$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Leu/chainfire/lumen/drivers/j$b;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->b(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->b(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->b(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Leu/chainfire/lumen/drivers/j$b;->d:F

    iget p1, p1, Leu/chainfire/lumen/drivers/j$b;->d:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public q(F)Leu/chainfire/lumen/drivers/j$b;
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/drivers/j$b;->d:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "PCCRGB --> OFF"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PCCRGB --> DARKEN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leu/chainfire/lumen/drivers/j$b;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/j$b;->a:Ljava/lang/Integer;

    const-string v2, "null"

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/j$b;->b:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/j$b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
