.class final Lcom/google/android/gms/common/api/internal/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/v;->r(Lcom/google/android/gms/common/api/internal/v;)Lcom/google/android/gms/common/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/w;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/v;->a(Lcom/google/android/gms/common/api/internal/v;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;)V

    return-void
.end method
