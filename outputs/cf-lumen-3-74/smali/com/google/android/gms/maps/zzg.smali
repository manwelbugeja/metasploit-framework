.class final Lcom/google/android/gms/maps/zzg;
.super Lcom/google/android/gms/maps/internal/zzi;
.source ""


# instance fields
.field private final synthetic zzo:Lcom/google/android/gms/maps/GoogleMap$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$b;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzg;->zzo:Lcom/google/android/gms/maps/GoogleMap$b;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/internal/maps/zzt;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzg;->zzo:Lcom/google/android/gms/maps/GoogleMap$b;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$b;->a(Lcom/google/android/gms/maps/model/f;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/maps/zzt;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzg;->zzo:Lcom/google/android/gms/maps/GoogleMap$b;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$b;->b(Lcom/google/android/gms/maps/model/f;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method
