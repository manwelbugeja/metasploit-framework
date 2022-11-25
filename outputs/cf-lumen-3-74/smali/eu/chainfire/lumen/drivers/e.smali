.class public Leu/chainfire/lumen/drivers/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Leu/chainfire/lumen/drivers/e;


# instance fields
.field private final a:Leu/chainfire/lumen/drivers/f;

.field private final b:Leu/chainfire/lumen/drivers/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lc/a/a/c$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Leu/chainfire/lumen/drivers/f;

    invoke-direct {v0, p1}, Leu/chainfire/lumen/drivers/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/e;->a:Leu/chainfire/lumen/drivers/f;

    invoke-static {p1, p2}, Leu/chainfire/lumen/drivers/g;->d(Landroid/content/Context;Lc/a/a/c$d;)Leu/chainfire/lumen/drivers/g;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/e;->b:Leu/chainfire/lumen/drivers/g;

    return-void
.end method

.method public static a(Landroid/content/Context;Lc/a/a/c$d;)Leu/chainfire/lumen/drivers/e;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/e;->c:Leu/chainfire/lumen/drivers/e;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/drivers/e;

    invoke-direct {v0, p0, p1}, Leu/chainfire/lumen/drivers/e;-><init>(Landroid/content/Context;Lc/a/a/c$d;)V

    sput-object v0, Leu/chainfire/lumen/drivers/e;->c:Leu/chainfire/lumen/drivers/e;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/e;->c:Leu/chainfire/lumen/drivers/e;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/e;->a:Leu/chainfire/lumen/drivers/f;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/f;->c()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/e;->b:Leu/chainfire/lumen/drivers/g;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/g;->i()Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/e;->a:Leu/chainfire/lumen/drivers/f;

    invoke-virtual {v0, p1, p2}, Leu/chainfire/lumen/drivers/f;->k(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leu/chainfire/lumen/drivers/e;->a:Leu/chainfire/lumen/drivers/f;

    invoke-virtual {p1, p2}, Leu/chainfire/lumen/drivers/f;->j(Z)Z

    :goto_0
    return-void
.end method
