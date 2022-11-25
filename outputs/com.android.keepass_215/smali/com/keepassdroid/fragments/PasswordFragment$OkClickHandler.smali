.class Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;
.super Ljava/lang/Object;
.source "PasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/fragments/PasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fragments/PasswordFragment;


# direct methods
.method private constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;Lcom/keepassdroid/fragments/PasswordFragment$1;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 820
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const v0, 0x7f0901a1

    invoke-static {p1, v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$2300(Lcom/keepassdroid/fragments/PasswordFragment;I)Ljava/lang/String;

    move-result-object p1

    .line 821
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const v1, 0x7f09019e

    invoke-static {v0, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$2300(Lcom/keepassdroid/fragments/PasswordFragment;I)Ljava/lang/String;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1, p1, v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$2400(Lcom/keepassdroid/fragments/PasswordFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
