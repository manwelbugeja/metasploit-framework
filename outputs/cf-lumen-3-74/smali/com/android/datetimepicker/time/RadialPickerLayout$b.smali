.class Lcom/android/datetimepicker/time/RadialPickerLayout$b;
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
.field final synthetic a:[Ljava/lang/Boolean;

.field final synthetic b:Lcom/android/datetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->b:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iput-object p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->a:[Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->b:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->c(Lcom/android/datetimepicker/time/RadialPickerLayout;Z)Z

    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->b:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->d(Lcom/android/datetimepicker/time/RadialPickerLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->a:[Ljava/lang/Boolean;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->e(Lcom/android/datetimepicker/time/RadialPickerLayout;IZZZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->b:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->f(Lcom/android/datetimepicker/time/RadialPickerLayout;I)I

    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->b:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->g(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/RadialPickerLayout$c;

    move-result-object v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout$b;->b:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    invoke-interface {v1, v2, v0, v4}, Lcom/android/datetimepicker/time/RadialPickerLayout$c;->a(IIZ)V

    return-void
.end method
