.class public Lc/a/a/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lc/a/a/f$a;

.field private h:Lc/a/a/f$a;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c$b;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/a/a/c$b;->b:Z

    const-string v1, "sh"

    iput-object v1, p0, Lc/a/a/c$b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/a/a/c$b;->d:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lc/a/a/c$b;->e:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lc/a/a/c$b;->f:Ljava/util/Map;

    iput-object v0, p0, Lc/a/a/c$b;->g:Lc/a/a/f$a;

    iput-object v0, p0, Lc/a/a/c$b;->h:Lc/a/a/f$a;

    iput v1, p0, Lc/a/a/c$b;->i:I

    return-void
.end method

.method static synthetic a(Lc/a/a/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/a/a/c$b;->b:Z

    return p0
.end method

.method static synthetic b(Lc/a/a/c$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/a/a/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/a/a/c$b;->d:Z

    return p0
.end method

.method static synthetic d(Lc/a/a/c$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lc/a/a/c$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$b;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lc/a/a/c$b;)Lc/a/a/f$a;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$b;->g:Lc/a/a/f$a;

    return-object p0
.end method

.method static synthetic g(Lc/a/a/c$b;)Lc/a/a/f$a;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$b;->h:Lc/a/a/f$a;

    return-object p0
.end method

.method static synthetic h(Lc/a/a/c$b;)I
    .locals 0

    iget p0, p0, Lc/a/a/c$b;->i:I

    return p0
.end method

.method static synthetic i(Lc/a/a/c$b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$b;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public j(Ljava/lang/String;ILc/a/a/c$f;)Lc/a/a/c$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lc/a/a/c$b;->k([Ljava/lang/String;ILc/a/a/c$f;)Lc/a/a/c$b;

    return-object p0
.end method

.method public k([Ljava/lang/String;ILc/a/a/c$f;)Lc/a/a/c$b;
    .locals 3

    iget-object v0, p0, Lc/a/a/c$b;->e:Ljava/util/List;

    new-instance v1, Lc/a/a/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lc/a/a/c$c;-><init>([Ljava/lang/String;ILc/a/a/c$f;Lc/a/a/c$e;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public l()Lc/a/a/c$d;
    .locals 2

    new-instance v0, Lc/a/a/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lc/a/a/c$d;-><init>(Lc/a/a/c$b;Lc/a/a/c$f;Lc/a/a/c$a;)V

    return-object v0
.end method

.method public m(Z)Lc/a/a/c$b;
    .locals 0

    iput-boolean p1, p0, Lc/a/a/c$b;->b:Z

    return-object p0
.end method

.method public n(Landroid/os/Handler;)Lc/a/a/c$b;
    .locals 0

    iput-object p1, p0, Lc/a/a/c$b;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lc/a/a/c$b;
    .locals 0

    iput-object p1, p0, Lc/a/a/c$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public p()Lc/a/a/c$b;
    .locals 1

    const-string v0, "su"

    invoke-virtual {p0, v0}, Lc/a/a/c$b;->o(Ljava/lang/String;)Lc/a/a/c$b;

    return-object p0
.end method
