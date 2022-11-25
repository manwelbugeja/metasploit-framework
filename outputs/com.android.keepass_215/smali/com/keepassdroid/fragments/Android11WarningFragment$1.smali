.class Lcom/keepassdroid/fragments/Android11WarningFragment$1;
.super Ljava/lang/Object;
.source "Android11WarningFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fragments/Android11WarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fragments/Android11WarningFragment;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fragments/Android11WarningFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/keepassdroid/fragments/Android11WarningFragment$1;->this$0:Lcom/keepassdroid/fragments/Android11WarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
