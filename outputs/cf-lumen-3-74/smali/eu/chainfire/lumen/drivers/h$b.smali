.class public Leu/chainfire/lumen/drivers/h$b;
.super Leu/chainfire/lumen/drivers/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Boolean;

.field private f:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/lumen/drivers/h$b;->f:F

    return-void
.end method

.method synthetic constructor <init>(Leu/chainfire/lumen/drivers/h$a;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/h$b;-><init>()V

    return-void
.end method

.method static synthetic c(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic e(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic g(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic h(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic i(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic j(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic k(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic l(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic m(Leu/chainfire/lumen/drivers/h$b;)F
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/drivers/h$b;->f:F

    return p0
.end method

.method static synthetic n(Leu/chainfire/lumen/drivers/h$b;F)F
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/drivers/h$b;->f:F

    return p1
.end method

.method public static o()Leu/chainfire/lumen/drivers/h$b;
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/h$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/h$b;-><init>()V

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    iput-object v1, v0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    iput-object v1, v0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    iput-object v1, v0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput v1, v0, Leu/chainfire/lumen/drivers/h$b;->f:F

    return-object v0
.end method

.method public static p()Leu/chainfire/lumen/drivers/h$b;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/h$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/h$b;-><init>()V

    return-object v0
.end method

.method public static q()Leu/chainfire/lumen/drivers/h$b;
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/h$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/h$b;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static r(I)Leu/chainfire/lumen/drivers/h$b;
    .locals 3

    invoke-static {p0}, Leu/chainfire/lumen/drivers/i;->c(I)[I

    move-result-object p0

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0}, Leu/chainfire/lumen/drivers/h$b;->s(III)Leu/chainfire/lumen/drivers/h$b;

    move-result-object p0

    return-object p0
.end method

.method public static s(III)Leu/chainfire/lumen/drivers/h$b;
    .locals 3

    new-instance v0, Leu/chainfire/lumen/drivers/h$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/h$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v2, 0xff

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public static t(I)Leu/chainfire/lumen/drivers/h$b;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/h$b;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/h$b;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Leu/chainfire/lumen/drivers/h$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Leu/chainfire/lumen/drivers/h$b;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->b(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->b(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->b(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->b(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    iget-object v2, p1, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c$a;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Leu/chainfire/lumen/drivers/h$b;->f:F

    iget p1, p1, Leu/chainfire/lumen/drivers/h$b;->f:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KCAL --> GRAYSCALE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KCAL --> INVERT"

    return-object v0

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const-string v0, "KCAL --> OFF"

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KCAL --> DARKEN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leu/chainfire/lumen/drivers/h$b;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    const-string v2, "null"

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->a:Ljava/lang/Integer;

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Leu/chainfire/lumen/drivers/h$b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public v(F)Leu/chainfire/lumen/drivers/h$b;
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/drivers/h$b;->f:F

    return-object p0
.end method
