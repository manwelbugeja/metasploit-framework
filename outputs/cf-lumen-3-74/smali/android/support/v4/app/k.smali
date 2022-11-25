.class public Landroid/support/v4/app/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/support/v4/app/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/l<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    return-void
.end method

.method public static final b(Landroid/support/v4/app/l;)Landroid/support/v4/app/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/l<",
            "*>;)",
            "Landroid/support/v4/app/k;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0, p0}, Landroid/support/v4/app/k;-><init>(Landroid/support/v4/app/l;)V

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->K0()V

    return-void
.end method

.method public B(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->w()V

    return-void
.end method

.method public D(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/n;->T0(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V

    return-void
.end method

.method public E(La/b/a/b/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/b/h<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/s;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->x(La/b/a/b/h;)V

    return-void
.end method

.method public F()La/b/a/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/b/h<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->y()La/b/a/b/h;

    move-result-object v0

    return-object v0
.end method

.method public G()Landroid/support/v4/app/o;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->U0()Landroid/support/v4/app/o;

    move-result-object v0

    return-object v0
.end method

.method public H()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->W0()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/h;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v1, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v1, v0, v0, p1}, Landroid/support/v4/app/n;->n(Landroid/support/v4/app/l;Landroid/support/v4/app/j;Landroid/support/v4/app/h;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->v()V

    return-void
.end method

.method public d(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->w(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->x(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->y()V

    return-void
.end method

.method public g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/n;->z(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->A()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->C()V

    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->D(Z)V

    return-void
.end method

.method public k(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->S(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public l(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->T(Landroid/view/Menu;)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->U()V

    return-void
.end method

.method public n(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->V(Z)V

    return-void
.end method

.method public o(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->W(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->X()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->Y()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->Z()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->b0()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->d()V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()V

    return-void
.end method

.method public v(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->f(Z)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/l;->g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->h0()Z

    move-result v0

    return v0
.end method

.method public y(Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->n0(Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object p1

    return-object p1
.end method

.method public z()Landroid/support/v4/app/m;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->j()Landroid/support/v4/app/n;

    move-result-object v0

    return-object v0
.end method
