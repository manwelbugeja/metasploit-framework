.class final Lcom/google/android/gms/common/internal/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$b;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/f$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/o;->a:Lcom/google/android/gms/common/api/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/o;->a:Lcom/google/android/gms/common/api/f$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/f$c;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
