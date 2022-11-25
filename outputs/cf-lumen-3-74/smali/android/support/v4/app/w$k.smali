.class Landroid/support/v4/app/w$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/app/w$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/w$k$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/w$c;Landroid/support/v4/app/w$d;)Landroid/app/Notification;
    .locals 16

    move-object/from16 v0, p1

    new-instance v15, Landroid/support/v4/app/w$k$a;

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

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Landroid/support/v4/app/w$k$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0, v15}, Landroid/support/v4/app/w$d;->a(Landroid/support/v4/app/w$c;Landroid/support/v4/app/v;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
