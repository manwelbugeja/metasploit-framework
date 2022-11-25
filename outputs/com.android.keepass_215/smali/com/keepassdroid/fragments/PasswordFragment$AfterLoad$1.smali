.class Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad$1;
.super Ljava/lang/Object;
.source "PasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad$1;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 788
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad$1;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;

    iget-object p1, p1, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/GroupActivity;->Launch(Landroid/app/Activity;)V

    return-void
.end method
