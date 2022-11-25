.class final Lcom/google/android/gms/common/internal/service/zaf;
.super Lcom/google/android/gms/common/internal/service/zaa;
.source ""


# instance fields
.field private final mResultHolder:Lcom/google/android/gms/common/api/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/c<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/c<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/service/zaa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/service/zaf;->mResultHolder:Lcom/google/android/gms/common/api/internal/c;

    return-void
.end method


# virtual methods
.method public final zaj(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/service/zaf;->mResultHolder:Lcom/google/android/gms/common/api/internal/c;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/c;->a(Ljava/lang/Object;)V

    return-void
.end method
