.class public final synthetic Landroidx/window/layout/WindowMetricsCalculator$-CC;
.super Ljava/lang/Object;
.source "WindowMetricsCalculator.kt"


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
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    return-void
.end method

.method public static getOrCreate()Landroidx/window/layout/WindowMetricsCalculator;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual {v0}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->getOrCreate()Landroidx/window/layout/WindowMetricsCalculator;

    move-result-object v0

    return-object v0
.end method

.method public static overrideDecorator(Landroidx/window/layout/WindowMetricsCalculatorDecorator;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->overrideDecorator(Landroidx/window/layout/WindowMetricsCalculatorDecorator;)V

    return-void
.end method

.method public static reset()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 0
    sget-object v0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual {v0}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->reset()V

    return-void
.end method
