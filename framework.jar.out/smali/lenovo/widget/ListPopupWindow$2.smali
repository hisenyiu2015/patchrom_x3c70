.class Llenovo/widget/ListPopupWindow$2;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Llenovo/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Llenovo/widget/ListPopupWindow$2;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1053
    iget-object v1, p0, Llenovo/widget/ListPopupWindow$2;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1054
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Llenovo/widget/ListPopupWindow$2;->this$0:Llenovo/widget/ListPopupWindow;

    invoke-virtual {v1}, Llenovo/widget/ListPopupWindow;->show()V

    .line 1057
    :cond_0
    return-void
.end method
