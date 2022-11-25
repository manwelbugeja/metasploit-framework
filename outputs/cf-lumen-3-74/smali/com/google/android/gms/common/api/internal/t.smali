.class final Lcom/google/android/gms/common/api/internal/t;
.super Lcom/google/android/gms/common/api/internal/n0;
.source ""


# instance fields
.field private final synthetic b:Lcom/google/android/gms/common/api/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/s;Lcom/google/android/gms/common/api/internal/l0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/t;->b:Lcom/google/android/gms/common/api/internal/s;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/n0;-><init>(Lcom/google/android/gms/common/api/internal/l0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/t;->b:Lcom/google/android/gms/common/api/internal/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/s;->onConnectionSuspended(I)V

    return-void
.end method
