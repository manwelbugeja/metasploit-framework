.class Lcom/android/datetimepicker/time/RadialPickerLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/RadialPickerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$a;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$a;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->b(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$a;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/a;->setAmOrPmPressed(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$a;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->b(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
