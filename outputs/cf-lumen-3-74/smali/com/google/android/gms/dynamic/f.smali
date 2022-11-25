.class final Lcom/google/android/gms/dynamic/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# instance fields
.field private final synthetic a:Landroid/os/Bundle;

.field private final synthetic b:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/f;->b:Lcom/google/android/gms/dynamic/a;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/f;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/dynamic/f;->b:Lcom/google/android/gms/dynamic/a;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a;->t(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/f;->a:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/google/android/gms/dynamic/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
