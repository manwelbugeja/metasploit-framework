.class final Lcom/google/android/gms/dynamic/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/dynamic/a$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/i;->a:Lcom/google/android/gms/dynamic/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final b(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/dynamic/i;->a:Lcom/google/android/gms/dynamic/a;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a;->t(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/dynamic/b;->onStart()V

    return-void
.end method
