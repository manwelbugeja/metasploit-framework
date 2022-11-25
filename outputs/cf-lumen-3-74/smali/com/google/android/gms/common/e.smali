.class public final Lcom/google/android/gms/common/e;
.super Lcom/google/android/gms/common/f;
.source ""


# static fields
.field public static final d:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/common/f;->a:I

    sput v0, Lcom/google/android/gms/common/e;->d:I

    return-void
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/f;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/f;->d(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/f;->e(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method
