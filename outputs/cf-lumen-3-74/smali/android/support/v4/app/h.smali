.class public Landroid/support/v4/app/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/arch/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/h$c;,
        Landroid/support/v4/app/h$e;,
        Landroid/support/v4/app/h$d;
    }
.end annotation


# static fields
.field private static final U:La/b/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/b/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final V:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Landroid/view/ViewGroup;

.field G:Landroid/view/View;

.field H:Landroid/view/View;

.field I:Z

.field J:Z

.field K:Landroid/support/v4/app/t;

.field L:Z

.field M:Z

.field N:Landroid/support/v4/app/h$c;

.field O:Z

.field P:Z

.field Q:F

.field R:Landroid/view/LayoutInflater;

.field S:Z

.field T:Landroid/arch/lifecycle/c;

.field a:I

.field b:Landroid/os/Bundle;

.field c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Ljava/lang/String;

.field f:Landroid/os/Bundle;

.field g:Landroid/support/v4/app/h;

.field h:I

.field i:I

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:I

.field q:Landroid/support/v4/app/n;

.field r:Landroid/support/v4/app/l;

.field s:Landroid/support/v4/app/n;

.field t:Landroid/support/v4/app/o;

.field u:Landroid/support/v4/app/h;

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/a/b/h;

    invoke-direct {v0}, La/b/a/b/h;-><init>()V

    sput-object v0, Landroid/support/v4/app/h;->U:La/b/a/b/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/h;->V:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/h;->d:I

    iput v0, p0, Landroid/support/v4/app/h;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->D:Z

    iput-boolean v0, p0, Landroid/support/v4/app/h;->J:Z

    new-instance v0, Landroid/arch/lifecycle/c;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/c;-><init>(Landroid/arch/lifecycle/b;)V

    iput-object v0, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    return-void
.end method

.method public static L(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/h;
    .locals 5

    const-string v0, " empty constructor that is public"

    const-string v1, ": make sure class name exists, is public, and has an"

    const-string v2, "Unable to instantiate fragment "

    :try_start_0
    sget-object v3, Landroid/support/v4/app/h;->U:La/b/a/b/h;

    invoke-virtual {v3, p1}, La/b/a/b/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, La/b/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    new-array v3, p0, [Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/h;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Landroid/support/v4/app/h;->i1(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Landroid/support/v4/app/h$d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/h$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Landroid/support/v4/app/h$d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/h$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Landroid/support/v4/app/h$d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/h$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    new-instance p2, Landroid/support/v4/app/h$d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/h$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p0

    new-instance p2, Landroid/support/v4/app/h$d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/h$d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static X(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/app/h;->U:La/b/a/b/h;

    invoke-virtual {v0, p1}, La/b/a/b/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, La/b/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class p0, Landroid/support/v4/app/h;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Landroid/support/v4/app/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/h;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/h$c;->q:Z

    iget-object v2, v0, Landroid/support/v4/app/h$c;->r:Landroid/support/v4/app/h$e;

    iput-object v1, v0, Landroid/support/v4/app/h$c;->r:Landroid/support/v4/app/h$e;

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/support/v4/app/h$e;->a()V

    :cond_1
    return-void
.end method

.method private e()Landroid/support/v4/app/h$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/h$c;

    invoke-direct {v0}, Landroid/support/v4/app/h$c;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->A:Z

    return v0
.end method

.method public A0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method public B()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/app/h$c;->b(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/h;->V:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->n()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    invoke-static {v0}, Landroid/support/v4/app/h$c;->b(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public B0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public C()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/app/h$c;->e(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public C0()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    iget-boolean v1, p0, Landroid/support/v4/app/h;->L:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->L:Z

    iget-boolean v1, p0, Landroid/support/v4/app/h;->M:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->M:Z

    iget-object v1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    iget-object v2, p0, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/l;->l(Ljava/lang/String;ZZ)Landroid/support/v4/app/t;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/t;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public D()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/app/h$c;->f(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/h;->V:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->C()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    invoke-static {v0}, Landroid/support/v4/app/h$c;->f(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public D0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method E()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/h$c;->c:I

    return v0
.end method

.method public E0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    return-object v0
.end method

.method public F0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method public final G()Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    return-object v0
.end method

.method G0()Landroid/support/v4/app/m;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    return-object v0
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/h;->i:I

    return v0
.end method

.method H0(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->K0()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->a0(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/n;->v()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroid/support/v4/app/k0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->J:Z

    return v0
.end method

.method I0(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->w(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public J()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    return-object v0
.end method

.method J0(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/h;->y:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->f0(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->x(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method K()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/h;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/h;->j:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->k:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->l:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->m:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->n:Z

    iput v1, p0, Landroid/support/v4/app/h;->p:I

    iput-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    iput-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    iput-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    iput v1, p0, Landroid/support/v4/app/h;->v:I

    iput v1, p0, Landroid/support/v4/app/h;->w:I

    iput-object v0, p0, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/h;->y:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->z:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->B:Z

    iput-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    iput-boolean v1, p0, Landroid/support/v4/app/h;->L:Z

    iput-boolean v1, p0, Landroid/support/v4/app/h;->M:Z

    return-void
.end method

.method K0(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->K0()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->g0(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroid/support/v4/app/h;->S:Z

    iget-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_CREATE:Landroid/arch/lifecycle/a$a;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/c;->e(Landroid/arch/lifecycle/a$a;)V

    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/app/k0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method L0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/h;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/h;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/h;->j0(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/n;->z(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method M()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/app/n;

    invoke-direct {v0}, Landroid/support/v4/app/n;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    new-instance v2, Landroid/support/v4/app/h$b;

    invoke-direct {v2, p0}, Landroid/support/v4/app/h$b;-><init>(Landroid/support/v4/app/h;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/n;->n(Landroid/support/v4/app/l;Landroid/support/v4/app/j;Landroid/support/v4/app/h;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method M0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->K0()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->o:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/h;->k0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final N()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/h;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method N0()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_DESTROY:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/c;->e(Landroid/arch/lifecycle/a$a;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->A()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    iput-boolean v0, p0, Landroid/support/v4/app/h;->S:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->l0()V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final O()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->z:Z

    return v0
.end method

.method O0()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->B()V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->n0()V

    iget-boolean v1, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/t;->b()V

    :cond_1
    iput-boolean v0, p0, Landroid/support/v4/app/h;->o:Z

    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final P()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->y:Z

    return v0
.end method

.method P0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->o0()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/h;->R:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroid/support/v4/app/h;->B:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/n;->A()V

    iput-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method Q()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Landroid/support/v4/app/h$c;->s:Z

    return v0
.end method

.method Q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->p0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/h;->R:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method final R()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/h;->p:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method R0()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->C()V

    :cond_0
    return-void
.end method

.method public final S()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->m:Z

    return v0
.end method

.method S0(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->t0(Z)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->D(Z)V

    :cond_0
    return-void
.end method

.method T()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Landroid/support/v4/app/h$c;->q:Z

    return v0
.end method

.method T0(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/h;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->C:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/h;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->u0(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->S(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final U()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->k:Z

    return v0
.end method

.method U0(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/h;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->v0(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->T(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public final V()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method V0()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_PAUSE:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/c;->e(Landroid/arch/lifecycle/a$a;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->U()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->w0()V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/n;->d()Z

    move-result v0

    return v0
.end method

.method W0(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->x0(Z)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->V(Z)V

    :cond_0
    return-void
.end method

.method X0(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/h;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/h;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->y0(Landroid/view/Menu;)V

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->W(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public final Y()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/h;->P()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Y0()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->X()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    iget-boolean v0, p0, Landroid/support/v4/app/h;->L:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->L:Z

    iget-boolean v1, p0, Landroid/support/v4/app/h;->M:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/h;->M:Z

    iget-object v1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    iget-object v2, p0, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v0}, Landroid/support/v4/app/l;->l(Ljava/lang/String;ZZ)Landroid/support/v4/app/t;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method Z()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->K0()V

    :cond_0
    return-void
.end method

.method Z0()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->K0()V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->h0()Z

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->A0()V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/n;->Y()V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->h0()Z

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_RESUME:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/c;->e(Landroid/arch/lifecycle/a$a;)V

    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Landroid/arch/lifecycle/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    return-object v0
.end method

.method public a0(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method a1(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->B0(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->W0()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public b0(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method b1()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->K0()V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->h0()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->C0()V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/n;->Z()V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/t;->c()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_START:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/c;->e(Landroid/arch/lifecycle/a$a;)V

    return-void

    :cond_3
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c0(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method c1()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->T:Landroid/arch/lifecycle/c;

    sget-object v1, Landroid/arch/lifecycle/a$a;->ON_STOP:Landroid/arch/lifecycle/a$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/c;->e(Landroid/arch/lifecycle/a$a;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/n;->b0()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->D0()V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/h;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/h;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/h;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/h;->d:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/h;->p:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->A:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/h;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->u:Landroid/support/v4/app/h;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->u:Landroid/support/v4/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/h;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/h;->i:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/h;->u()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/h;->u()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/h;->H:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/h;->E()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    const-string v1, "  "

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/support/v4/app/t;->g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public d0(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    iget-object p1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/l;->h()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->c0(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public d1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public e0(Landroid/support/v4/app/h;)V
    .locals 0

    return-void
.end method

.method e1(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/h;->M()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/h;->t:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->T0(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/h;->t:Landroid/support/v4/app/o;

    iget-object p1, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {p1}, Landroid/support/v4/app/n;->y()V

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method f(Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->n0(Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f0(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final f1(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/h;->H:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->F0(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/support/v4/app/k0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/l;->h()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    :goto_0
    return-object v0
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->e1(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/n;->x0(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {p1}, Landroid/support/v4/app/n;->y()V

    :cond_0
    return-void
.end method

.method g1(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/h$c;->a:Landroid/view/View;

    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/app/h$c;->g(Landroid/support/v4/app/h$c;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    invoke-static {v0}, Landroid/support/v4/app/h$c;->g(Landroid/support/v4/app/h$c;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h0(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method h1(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/h$c;->b:Landroid/animation/Animator;

    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/support/v4/app/h$c;->h(Landroid/support/v4/app/h$c;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    invoke-static {v0}, Landroid/support/v4/app/h$c;->h(Landroid/support/v4/app/h$c;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i0(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public i1(Landroid/os/Bundle;)V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/h;->d:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->W()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/h;->f:Landroid/os/Bundle;

    return-void
.end method

.method j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/h$c;->a:Landroid/view/View;

    return-object v0
.end method

.method public j0(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public j1(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->C:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/app/h;->C:Z

    invoke-virtual {p0}, Landroid/support/v4/app/h;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/h;->P()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->v()V

    :cond_0
    return-void
.end method

.method k()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/h$c;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method public k0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method k1(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/h$c;->s:Z

    return-void
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public l0()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    iget-boolean v1, p0, Landroid/support/v4/app/h;->M:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->M:Z

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    iget-object v1, p0, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/h;->L:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/l;->l(Ljava/lang/String;ZZ)Landroid/support/v4/app/t;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()V

    :cond_1
    return-void
.end method

.method final l1(ILandroid/support/v4/app/h;)V
    .locals 0

    iput p1, p0, Landroid/support/v4/app/h;->d:I

    new-instance p1, Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/h;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    return-void
.end method

.method public final m()Landroid/support/v4/app/m;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/h;->M()V

    iget v0, p0, Landroid/support/v4/app/h;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->Y()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->Z()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->v()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->y()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    return-object v0
.end method

.method public m0()V
    .locals 0

    return-void
.end method

.method public m1(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/h;->D:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/app/h;->D:Z

    iget-boolean p1, p0, Landroid/support/v4/app/h;->C:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/h;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/h;->P()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->v()V

    :cond_0
    return-void
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/app/h$c;->a(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public n0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method n1(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/h$c;->d:I

    return-void
.end method

.method o()Landroid/support/v4/app/j0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/h$c;->o:Landroid/support/v4/app/j0;

    return-object v0
.end method

.method public o0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method o1(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    iput p1, v0, Landroid/support/v4/app/h$c;->e:I

    iput p2, v0, Landroid/support/v4/app/h$c;->f:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->g()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/app/h$c;->c(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public p0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/h;->t(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method p1(Landroid/support/v4/app/h$e;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    iget-object v1, v0, Landroid/support/v4/app/h$c;->r:Landroid/support/v4/app/h$e;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/app/h$c;->q:Z

    if-eqz v1, :cond_3

    iput-object p1, v0, Landroid/support/v4/app/h$c;->r:Landroid/support/v4/app/h$e;

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/support/v4/app/h$e;->b()V

    :cond_4
    return-void
.end method

.method q()Landroid/support/v4/app/j0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/h$c;->p:Landroid/support/v4/app/j0;

    return-object v0
.end method

.method public q0(Z)V
    .locals 0

    return-void
.end method

.method public q1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/app/h;->A:Z

    return-void
.end method

.method public final r()Landroid/support/v4/app/m;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    return-object v0
.end method

.method public r0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method r1(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/h$c;->c:I

    return-void
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/h;->v:I

    return v0
.end method

.method public s0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/h;->E:Z

    iget-object p1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/l;->h()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/h;->r0(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public s1(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/h;->J:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/app/h;->a:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/h;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/n;->L0(Landroid/support/v4/app/h;)V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/h;->J:Z

    iget v0, p0, Landroid/support/v4/app/h;->a:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/app/h;->I:Z

    return-void
.end method

.method public t(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/l;->q()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->m()Landroid/support/v4/app/m;

    iget-object v0, p0, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->u0()Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, La/b/a/c/a;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t0(Z)V
    .locals 0

    return-void
.end method

.method public t1(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/h;->u1(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, La/b/a/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/h;->d:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/app/h;->v:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/h;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/h$c;->d:I

    return v0
.end method

.method public u0(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public u1(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/support/v4/app/l;->u(Landroid/support/v4/app/h;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method v()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/h$c;->e:I

    return v0
.end method

.method public v0(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public v1(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/h;->w1(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method w()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Landroid/support/v4/app/h$c;->f:I

    return v0
.end method

.method public w0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/h;->E:Z

    return-void
.end method

.method public w1(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/l;->u(Landroid/support/v4/app/h;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x()Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h;->u:Landroid/support/v4/app/h;

    return-object v0
.end method

.method public x0(Z)V
    .locals 0

    return-void
.end method

.method public x1()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    iget-object v1, v1, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v1}, Landroid/support/v4/app/l;->k()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    iget-object v0, v0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->k()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/h$a;

    invoke-direct {v1, p0}, Landroid/support/v4/app/h$a;-><init>(Landroid/support/v4/app/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/h;->c()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/h$c;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/h$c;->q:Z

    :goto_1
    return-void
.end method

.method public y()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/app/h$c;->d(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/h;->V:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/h;->p()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/h;->N:Landroid/support/v4/app/h$c;

    invoke-static {v0}, Landroid/support/v4/app/h$c;->d(Landroid/support/v4/app/h$c;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public y0(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public y1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final z()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z0(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method
