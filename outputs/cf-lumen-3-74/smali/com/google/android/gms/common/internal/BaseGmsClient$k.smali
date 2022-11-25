.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$k;
.super Lcom/google/android/gms/common/internal/BaseGmsClient$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/BaseGmsClient$f;"
    }
.end annotation


# instance fields
.field private final synthetic g:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$k;->g:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$f;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$k;->g:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:Lcom/google/android/gms/common/internal/BaseGmsClient$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$k;->g:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$k;->g:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:Lcom/google/android/gms/common/internal/BaseGmsClient$c;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
