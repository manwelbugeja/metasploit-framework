.class public final Lcom/google/android/gms/common/internal/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:La/b/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/b/b<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Lcom/google/android/gms/common/internal/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lb/a/a/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/b$a;->d:I

    sget-object v0, Lb/a/a/a/b/a;->i:Lb/a/a/a/b/a;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/b$a;->h:Lb/a/a/a/b/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/b$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$a;->b:La/b/a/b/b;

    if-nez v0, :cond_0

    new-instance v0, La/b/a/b/b;

    invoke-direct {v0}, La/b/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/b$a;->b:La/b/a/b/b;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$a;->b:La/b/a/b/b;

    invoke-virtual {v0, p1}, La/b/a/b/b;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/common/internal/b;
    .locals 10

    new-instance v9, Lcom/google/android/gms/common/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/b$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/b$a;->b:La/b/a/b/b;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/b$a;->c:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/internal/b$a;->d:I

    iget-object v5, p0, Lcom/google/android/gms/common/internal/b$a;->e:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/internal/b$a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/internal/b$a;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/internal/b$a;->h:Lb/a/a/a/b/a;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/b/a;)V

    return-object v9
.end method

.method public final c(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/b$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/common/internal/b$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/common/internal/b$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b$a;->f:Ljava/lang/String;

    return-object p0
.end method
