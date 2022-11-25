.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/google/android/gms/internal/maps/zze;


# direct methods
.method public static a(Lcom/google/android/gms/internal/maps/zze;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/internal/maps/zze;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/maps/zze;

    sput-object p0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/internal/maps/zze;

    return-void
.end method
