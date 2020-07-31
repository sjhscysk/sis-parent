package com.ruoyi.data.domain;

/**
 * 结果
 *
 * @author afeey
 */
public class Result {

    private boolean success;
    private String message;
    private Object data;

    /**
     * 默认构造函数
     */
    public Result() {
        this(false, "", null);
    }

    /**
     * 构造函数
     *
     * @param success 是否成功
     * @param message 消息
     */
    public Result(boolean success, String message) {
        this(success, message, null);
    }

    /**
     * 构造函数
     *
     * @param success 是否成功
     * @param message 消息
     * @param data    数据对象
     */
    public Result(boolean success, String message, Object data) {
        this.success = success;
        this.message = message;
        this.data = data;
    }

    public boolean getSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
