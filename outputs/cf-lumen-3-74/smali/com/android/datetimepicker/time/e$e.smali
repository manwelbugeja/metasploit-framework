.class Lcom/android/datetimepicker/time/e$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/e;


# direct methods
.method private constructor <init>(Lcom/android/datetimepicker/time/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/datetimepicker/time/e$e;->a:Lcom/android/datetimepicker/time/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/datetimepicker/time/e;Lcom/android/datetimepicker/time/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e$e;-><init>(Lcom/android/datetimepicker/time/e;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/android/datetimepicker/time/e$e;->a:Lcom/android/datetimepicker/time/e;

    invoke-static {p1, p2}, Lcom/android/datetimepicker/time/e;->i(Lcom/android/datetimepicker/time/e;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
