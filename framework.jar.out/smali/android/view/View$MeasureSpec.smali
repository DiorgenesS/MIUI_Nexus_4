.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjust(II)I
    .locals 5
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .prologue
    const/4 v2, 0x0

    .line 21078
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 21079
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 21080
    .local v1, "size":I
    if-nez v0, :cond_0

    .line 21082
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 21084
    :cond_0
    add-int/2addr v1, p1

    .line 21085
    if-gez v1, :cond_1

    .line 21086
    const-string/jumbo v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MeasureSpec.adjust: new size would be negative! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 21087
    const-string/jumbo v4, ") spec: "

    .line 21086
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 21087
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 21086
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 21087
    const-string/jumbo v4, " delta: "

    .line 21086
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21088
    const/4 v1, 0x0

    .line 21090
    :cond_1
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method public static getMode(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    .prologue
    .line 21064
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    return v0
.end method

.method public static getSize(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    .prologue
    .line 21074
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    return v0
.end method

.method public static makeMeasureSpec(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .prologue
    .line 21035
    invoke-static {}, Landroid/view/View;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21036
    add-int v0, p0, p1

    return v0

    .line 21038
    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static makeSafeMeasureSpec(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 21049
    sget-boolean v0, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 21050
    return v1

    .line 21052
    :cond_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "measureSpec"    # I

    .prologue
    .line 21101
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 21102
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 21104
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MeasureSpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21106
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 21107
    const-string/jumbo v3, "UNSPECIFIED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21115
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 21108
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 21109
    const-string/jumbo v3, "EXACTLY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21110
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    .line 21111
    const-string/jumbo v3, "AT_MOST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21113
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
