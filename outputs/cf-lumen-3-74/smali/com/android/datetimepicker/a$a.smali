.class Lcom/android/datetimepicker/a$a;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/a;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/datetimepicker/a$a;->a:Lcom/android/datetimepicker/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/datetimepicker/a$a;->a:Lcom/android/datetimepicker/a;

    invoke-static {p1}, Lcom/android/datetimepicker/a;->b(Lcom/android/datetimepicker/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/datetimepicker/a;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/datetimepicker/a;->a(Lcom/android/datetimepicker/a;Z)Z

    return-void
.end method
