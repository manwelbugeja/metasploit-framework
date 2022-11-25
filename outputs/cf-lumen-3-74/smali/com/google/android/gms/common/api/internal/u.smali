.class final Lcom/google/android/gms/common/api/internal/u;
.super Lcom/google/android/gms/common/api/internal/n0;
.source ""


# instance fields
.field private final synthetic b:Lcom/google/android/gms/common/api/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/s;Lcom/google/android/gms/common/api/internal/l0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/common/api/internal/s;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/n0;-><init>(Lcom/google/android/gms/common/api/internal/l0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/common/api/internal/s;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/s;->a(Lcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/common/api/internal/m0;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/m0;->n:Lcom/google/android/gms/common/api/internal/b1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/b1;->b(Landroid/os/Bundle;)V

    return-void
.end method
