.class Lcom/android/datetimepicker/time/e$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/time/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/e;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {p1}, Lcom/android/datetimepicker/time/e;->c(Lcom/android/datetimepicker/time/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {p1}, Lcom/android/datetimepicker/time/e;->d(Lcom/android/datetimepicker/time/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/datetimepicker/time/e;->e(Lcom/android/datetimepicker/time/e;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-virtual {p1}, Lcom/android/datetimepicker/time/e;->A()V

    :goto_0
    iget-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {p1}, Lcom/android/datetimepicker/time/e;->f(Lcom/android/datetimepicker/time/e;)Lcom/android/datetimepicker/time/e$g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {p1}, Lcom/android/datetimepicker/time/e;->f(Lcom/android/datetimepicker/time/e;)Lcom/android/datetimepicker/time/e$g;

    move-result-object p1

    iget-object v0, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {v0}, Lcom/android/datetimepicker/time/e;->g(Lcom/android/datetimepicker/time/e;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {v1}, Lcom/android/datetimepicker/time/e;->g(Lcom/android/datetimepicker/time/e;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {v2}, Lcom/android/datetimepicker/time/e;->g(Lcom/android/datetimepicker/time/e;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/datetimepicker/time/e$g;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V

    :cond_1
    iget-object p1, p0, Lcom/android/datetimepicker/time/e$c;->a:Lcom/android/datetimepicker/time/e;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
