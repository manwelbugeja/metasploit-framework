.class Landroid/support/v4/app/w$g;
.super Landroid/support/v4/app/w$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/w$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/w$c;Landroid/support/v4/app/w$d;)Landroid/app/Notification;
    .locals 30

    move-object/from16 v0, p1

    new-instance v15, Landroid/support/v4/app/x$a;

    move-object v1, v15

    iget-object v2, v0, Landroid/support/v4/app/w$c;->a:Landroid/content/Context;

    iget-object v3, v0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iget-object v4, v0, Landroid/support/v4/app/w$c;->b:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/support/v4/app/w$c;->c:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/support/v4/app/w$c;->h:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/support/v4/app/w$c;->f:Landroid/widget/RemoteViews;

    iget v8, v0, Landroid/support/v4/app/w$c;->i:I

    iget-object v9, v0, Landroid/support/v4/app/w$c;->d:Landroid/app/PendingIntent;

    iget-object v10, v0, Landroid/support/v4/app/w$c;->e:Landroid/app/PendingIntent;

    iget-object v11, v0, Landroid/support/v4/app/w$c;->g:Landroid/graphics/Bitmap;

    iget v12, v0, Landroid/support/v4/app/w$c;->p:I

    iget v13, v0, Landroid/support/v4/app/w$c;->q:I

    iget-boolean v14, v0, Landroid/support/v4/app/w$c;->r:Z

    move-object/from16 v16, v15

    iget-boolean v15, v0, Landroid/support/v4/app/w$c;->k:Z

    move-object/from16 v28, v16

    move-object/from16 v29, v1

    iget-boolean v1, v0, Landroid/support/v4/app/w$c;->l:Z

    move/from16 v16, v1

    iget v1, v0, Landroid/support/v4/app/w$c;->j:I

    move/from16 v17, v1

    iget-object v1, v0, Landroid/support/v4/app/w$c;->n:Ljava/lang/CharSequence;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/support/v4/app/w$c;->w:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/support/v4/app/w$c;->N:Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/support/v4/app/w$c;->A:Landroid/os/Bundle;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/support/v4/app/w$c;->s:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-boolean v1, v0, Landroid/support/v4/app/w$c;->t:Z

    move/from16 v23, v1

    iget-object v1, v0, Landroid/support/v4/app/w$c;->u:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/support/v4/app/w$c;->E:Landroid/widget/RemoteViews;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/support/v4/app/w$c;->F:Landroid/widget/RemoteViews;

    move-object/from16 v26, v1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/w$c;->a(Landroid/support/v4/app/w$c;)I

    move-result v27

    move-object/from16 v1, v29

    invoke-direct/range {v1 .. v27}, Landroid/support/v4/app/x$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V

    iget-object v1, v0, Landroid/support/v4/app/w$c;->v:Ljava/util/ArrayList;

    move-object/from16 v2, v28

    invoke-static {v2, v1}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/u;Ljava/util/ArrayList;)V

    iget-object v1, v0, Landroid/support/v4/app/w$c;->m:Landroid/support/v4/app/w$m;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/w$m;->b(Landroid/support/v4/app/v;)V

    :cond_0
    move-object/from16 v1, p2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/w$d;->a(Landroid/support/v4/app/w$c;Landroid/support/v4/app/v;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v4/app/w$c;->m:Landroid/support/v4/app/w$m;

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/support/v4/app/w;->b(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/w$m;->a(Landroid/os/Bundle;)V

    :cond_1
    return-object v1
.end method
