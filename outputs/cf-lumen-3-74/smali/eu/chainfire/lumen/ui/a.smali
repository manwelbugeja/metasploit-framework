.class public Leu/chainfire/lumen/ui/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/ui/a$k;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Leu/chainfire/lumen/ui/a$k;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Leu/chainfire/lumen/ui/a;->b:Ljava/util/Queue;

    new-instance v0, Leu/chainfire/lumen/ui/a$b;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/ui/a$b;-><init>(Leu/chainfire/lumen/ui/a;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/a;->c:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static c(Landroid/content/Context;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f090002

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Leu/chainfire/lumen/ui/a$c;

    invoke-direct {p1, p3}, Leu/chainfire/lumen/ui/a$c;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    if-lez p2, :cond_1

    new-instance p1, Leu/chainfire/lumen/ui/a$d;

    invoke-direct {p1, p3}, Leu/chainfire/lumen/ui/a$d;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-lez p4, :cond_2

    new-instance p1, Leu/chainfire/lumen/ui/a$e;

    invoke-direct {p1, p5}, Leu/chainfire/lumen/ui/a$e;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p4, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-lez p6, :cond_3

    new-instance p1, Leu/chainfire/lumen/ui/a$f;

    invoke-direct {p1, p7}, Leu/chainfire/lumen/ui/a$f;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p6, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static f(Landroid/content/Context;[Ljava/lang/String;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p8

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v7, v1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    return-void

    :cond_1
    new-array v7, v8, [Landroid/app/AlertDialog;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v9, v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move/from16 v12, p2

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    aget-object v12, v1, v10

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v8, v12, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v13, v13

    invoke-static {v8, v12, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    invoke-static {v8, v12, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v15, v15

    invoke-static {v8, v12, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v11, v13, v14, v15, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v11}, Landroid/widget/EditText;->selectAll()V

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v9, Leu/chainfire/lumen/ui/a$g;

    invoke-direct {v9, v7, v1, v11, v6}, Leu/chainfire/lumen/ui/a$g;-><init>([Landroid/app/AlertDialog;[Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v9}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v8, Leu/chainfire/lumen/ui/a$h;

    invoke-direct {v8, v1, v11, v3}, Leu/chainfire/lumen/ui/a$h;-><init>([Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-lez v2, :cond_2

    new-instance v8, Leu/chainfire/lumen/ui/a$i;

    invoke-direct {v8, v1, v11, v3}, Leu/chainfire/lumen/ui/a$i;-><init>([Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-lez v4, :cond_3

    new-instance v2, Leu/chainfire/lumen/ui/a$j;

    move-object/from16 v3, p6

    invoke-direct {v2, v1, v11, v3}, Leu/chainfire/lumen/ui/a$j;-><init>([Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    if-lez v5, :cond_4

    new-instance v2, Leu/chainfire/lumen/ui/a$a;

    invoke-direct {v2, v1, v11, v6}, Leu/chainfire/lumen/ui/a$a;-><init>([Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-object v0, v7, v10

    aget-object v0, v7, v10

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    aget-object v0, v7, v10

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    aget-object v0, v7, v10

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Leu/chainfire/lumen/ui/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Leu/chainfire/lumen/ui/a;->c(Landroid/content/Context;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/lumen/ui/a$k;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Leu/chainfire/lumen/ui/a$k;->a(Leu/chainfire/lumen/ui/a;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Leu/chainfire/lumen/ui/a$k;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
