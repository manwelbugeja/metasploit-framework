.class Leu/chainfire/lumen/ui/FilterSelectFragment$w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "w"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Leu/chainfire/lumen/a$e;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;IILeu/chainfire/lumen/a$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->a:I

    iput p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->b:I

    iput-object p4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->c:Leu/chainfire/lumen/a$e;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/ui/FilterSelectFragment$w;)Leu/chainfire/lumen/a$e;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->c:Leu/chainfire/lumen/a$e;

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/lumen/ui/FilterSelectFragment$w;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->a:I

    return p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->b:I

    return v0
.end method

.method public d()Leu/chainfire/lumen/a$e;
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->c:Leu/chainfire/lumen/a$e;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->a:I

    return v0
.end method
