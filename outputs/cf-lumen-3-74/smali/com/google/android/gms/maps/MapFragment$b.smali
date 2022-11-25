.class final Lcom/google/android/gms/maps/MapFragment$b;
.super Lcom/google/android/gms/dynamic/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/a<",
        "Lcom/google/android/gms/maps/MapFragment$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Landroid/app/Fragment;

.field private f:Lcom/google/android/gms/dynamic/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/c<",
            "Lcom/google/android/gms/maps/MapFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/dynamic/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->h:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$b;->e:Landroid/app/Fragment;

    return-void
.end method

.method private final w(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$b;->g:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment$b;->y()V

    return-void
.end method

.method static synthetic x(Lcom/google/android/gms/maps/MapFragment$b;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->w(Landroid/app/Activity;)V

    return-void
.end method

.method private final y()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->g:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->f:Lcom/google/android/gms/dynamic/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/a;->b()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/e;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$b;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/zze;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment$b;->f:Lcom/google/android/gms/dynamic/c;

    new-instance v2, Lcom/google/android/gms/maps/MapFragment$a;

    iget-object v3, p0, Lcom/google/android/gms/maps/MapFragment$b;->e:Landroid/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/MapFragment$a;-><init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/dynamic/c;->a(Lcom/google/android/gms/dynamic/b;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/f;

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/a;->b()Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/MapFragment$a;->c(Lcom/google/android/gms/maps/f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    :cond_2
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/dynamic/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/c<",
            "Lcom/google/android/gms/maps/MapFragment$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/MapFragment$b;->f:Lcom/google/android/gms/dynamic/c;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment$b;->y()V

    return-void
.end method

.method public final v(Lcom/google/android/gms/maps/f;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/a;->b()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/dynamic/a;->b()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$a;->c(Lcom/google/android/gms/maps/f;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment$b;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
