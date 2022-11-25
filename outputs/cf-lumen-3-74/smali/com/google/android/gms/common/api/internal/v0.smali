.class final Lcom/google/android/gms/common/api/internal/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/u0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/u0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/v0;->a:Lcom/google/android/gms/common/api/internal/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v0;->a:Lcom/google/android/gms/common/api/internal/u0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/u0;->a:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d$a;->H(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()V

    return-void
.end method
