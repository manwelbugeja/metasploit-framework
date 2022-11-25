.class public final synthetic Landroidx/core/internal/view/SupportMenuItem$-CC;
.super Ljava/lang/Object;
.source "SupportMenuItem.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "15f1483824cf4085ddca5a8529d873fc59a8ced2cbce67fb2b3dd9033ea03442"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$setContentDescription(Landroidx/core/internal/view/SupportMenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "_this"    # Landroidx/core/internal/view/SupportMenuItem;

    .line 41
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$setTooltipText(Landroidx/core/internal/view/SupportMenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "_this"    # Landroidx/core/internal/view/SupportMenuItem;

    .line 41
    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p1

    return-object p1
.end method
