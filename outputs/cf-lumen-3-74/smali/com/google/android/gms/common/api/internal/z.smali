.class final Lcom/google/android/gms/common/api/internal/z;
.super Lcom/google/android/gms/common/api/internal/n0;
.source ""


# instance fields
.field private final synthetic b:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic c:Lcom/google/android/gms/common/api/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/y;Lcom/google/android/gms/common/api/internal/l0;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lcom/google/android/gms/common/api/internal/y;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/z;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/n0;-><init>(Lcom/google/android/gms/common/api/internal/l0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/z;->c:Lcom/google/android/gms/common/api/internal/y;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/y;->c:Lcom/google/android/gms/common/api/internal/v;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/z;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/v;->e(Lcom/google/android/gms/common/api/internal/v;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
