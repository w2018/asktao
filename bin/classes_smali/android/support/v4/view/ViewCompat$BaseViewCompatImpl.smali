.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .locals 3

    .prologue
    .line 539
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 541
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    .line 547
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 1
    .parameter

    .prologue
    .line 606
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 522
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v0, :cond_0

    .line 523
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 527
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 505
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v0, :cond_0

    .line 506
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 508
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 510
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_0
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .parameter

    .prologue
    .line 414
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 417
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method getFrameTime()J
    .locals 2

    .prologue
    .line 399
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 356
    const/4 v0, 0x2

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 685
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 456
    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 378
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 388
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 391
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 363
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 486
    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 749
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 627
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 718
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 699
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 728
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 385
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 443
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 739
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 501
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 667
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 612
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 632
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 637
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 744
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 642
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 647
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 681
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 617
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 708
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 652
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 657
    return-void
.end method
