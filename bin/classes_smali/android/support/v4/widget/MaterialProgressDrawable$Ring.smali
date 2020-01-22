.class Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 399
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 404
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 405
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 406
    iput v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    .line 407
    const/high16 v0, 0x40a0

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 408
    const/high16 v0, 0x4020

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 425
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 429
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 431
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 432
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 436
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 480
    iget-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 482
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 483
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 490
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v0, v1

    .line 491
    iget-wide v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 492
    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 498
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 499
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 500
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 503
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 505
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    add-float v0, p2, p3

    const/high16 v1, 0x40a0

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 508
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 510
    :cond_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method private invalidateSelf()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x43b4

    .line 458
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 459
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 460
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 462
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    mul-float v2, v0, v4

    .line 463
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iget v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    .line 464
    sub-float v3, v0, v2

    .line 466
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    iget v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 467
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 469
    invoke-direct {p0, p1, v2, v3, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 471
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 474
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 477
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .locals 2

    .prologue
    .line 638
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 537
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 682
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 683
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 684
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 685
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 686
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 687
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 688
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 549
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 450
    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 451
    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 452
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .parameter

    .prologue
    .line 655
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 656
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 657
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 659
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 441
    return-void
.end method

.method public setCenterRadius(D)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-wide p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 635
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 541
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 542
    return-void
.end method

.method public setColorIndex(I)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 529
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 518
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 521
    return-void
.end method

.method public setEndTrim(F)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 594
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 595
    return-void
.end method

.method public setInsets(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 614
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 616
    iget-wide v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 617
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 621
    :goto_0
    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 622
    return-void

    .line 619
    :cond_1
    div-float/2addr v0, v5

    float-to-double v0, v0

    iget-wide v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    .line 605
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 606
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 1
    .parameter

    .prologue
    .line 645
    iget-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_0

    .line 646
    iput-boolean p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 647
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 649
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 575
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 576
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .parameter

    .prologue
    .line 562
    iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 563
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 564
    invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 565
    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 674
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 675
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 676
    return-void
.end method