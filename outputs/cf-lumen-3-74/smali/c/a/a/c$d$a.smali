.class Lc/a/a/c$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/c$d;-><init>(Lc/a/a/c$b;Lc/a/a/c$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/c$b;

.field final synthetic b:Lc/a/a/c$f;

.field final synthetic c:Lc/a/a/c$d;


# direct methods
.method constructor <init>(Lc/a/a/c$d;Lc/a/a/c$b;Lc/a/a/c$f;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/c$d$a;->c:Lc/a/a/c$d;

    iput-object p2, p0, Lc/a/a/c$d$a;->a:Lc/a/a/c$b;

    iput-object p3, p0, Lc/a/a/c$d$a;->b:Lc/a/a/c$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p1, p0, Lc/a/a/c$d$a;->c:Lc/a/a/c$d;

    invoke-static {p1}, Lc/a/a/c$d;->a(Lc/a/a/c$d;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/c$h;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p3, p1}, Lc/a/a/c;->a(Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, -0x4

    :cond_0
    iget-object p1, p0, Lc/a/a/c$d$a;->c:Lc/a/a/c$d;

    iget-object v0, p0, Lc/a/a/c$d$a;->a:Lc/a/a/c$b;

    invoke-static {v0}, Lc/a/a/c$b;->h(Lc/a/a/c$b;)I

    move-result v0

    invoke-static {p1, v0}, Lc/a/a/c$d;->b(Lc/a/a/c$d;I)I

    iget-object p1, p0, Lc/a/a/c$d$a;->b:Lc/a/a/c$f;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Lc/a/a/c$f;->a(IILjava/util/List;)V

    return-void
.end method
